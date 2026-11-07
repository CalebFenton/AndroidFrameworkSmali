.class interface abstract Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher$Natives;
.super Ljava/lang/Object;
.source "LibraryPrefetcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/org/chromium/base/library_loader/LibraryPrefetcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "Natives"
.end annotation


# virtual methods
.method public abstract blacklist forkAndPrefetchNativeLibrary()V
.end method

.method public abstract blacklist percentageOfResidentNativeLibraryCode()I
.end method

.method public abstract blacklist periodicallyCollectResidency()V
.end method
