-- Add labelExclusionPrefixes column to linear_teams table
-- This allows users to configure label name prefixes that should
-- NOT be synced from Linear to GitHub (e.g., customer-specific labels).
ALTER TABLE "linear_teams" ADD COLUMN "labelExclusionPrefixes" TEXT[] NOT NULL DEFAULT ARRAY[]::TEXT[];
