def merge(nums1, m, nums2, n)
  nums1.pop(n)
  nums1.concat(nums2).sort!
end