# public-shared-actions
Shared actions available to both public and private repositories

## Usage
  
```yaml
- uses: Kong/public-shared-actions/<action-name>@<tag>
```

For example:
  
```yaml
- uses:  Kong/public-shared-actions/code-build-actions/build-js-sdk@v1.6.0
```

# Setting Up Lefthook for Commit Message Verification

This guide will help you install and configure Lefthook to enforce commit message standards locally.

## Step 1: Install Lefthook

### For macOS and Linux (using Homebrew)
Run the following command to install Lefthook using Homebrew:
```bash
brew install lefthook
```

### For Linux (using Snap)
Run the following command to install Lefthook using Snap:
```bash
snap install --classic lefthook
```

### For Other Platforms
Refer to the official Lefthook [installation guide](https://github.com/evilmartians/lefthook/blob/master/docs/install.md) for platform-specific instructions.

---

## Step 2: Initialize Lefthook

After installing Lefthook, navigate to the root directory of your project and run the following command:
```bash
lefthook install
```
This command:
- Creates an empty `lefthook.yml` configuration file (if it does not already exist).
- Updates your Git hooks to use Lefthook.

Run this command after cloning the repository to ensure Lefthook is correctly initialized.

---

## Step 3: Configure Commit Message Hook

Update the `lefthook.yml` file in your repository to include the following configuration:
```yaml
commit-msg:
  commands:
    commitlint:
      run: pnpm commitlint --edit $1
```
This configuration enforces commit message linting using Commitlint.

---

## Step 4: Sync Lefthook Hooks

Run the following command to sync the Lefthook configuration with your Git hooks:
```bash
lefthook run pre-commit
```

---

## Step 5: Verify Commit Message Linting

To verify that Lefthook is correctly set up:

1. Stage a file for commit:
   ```bash
   git add .
   ```

2. Attempt to commit with an invalid message:
   ```bash
   git commit -m "Test commitlint"
   ```
   You should see errors like:
    - ✖ subject may not be empty
    - ✖ type may not be empty
    - ✖ scope may not be empty

3. Test with a valid commit message:
   ```bash
   git commit -m "feat(ci): test commitlint for scope"
   ```
   This should pass without any issues.

---

## Additional Notes

- Ensure that all developers in your team follow this setup to maintain consistent commit message standards.
- Refer to the [Lefthook Usage Guide](https://github.com/evilmartians/lefthook/blob/master/docs/usage.md) for more advanced configurations and usage scenarios.

By setting up Lefthook, you ensure that all developers adhere to your commit message conventions, improving collaboration and project quality.


