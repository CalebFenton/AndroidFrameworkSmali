.class public abstract Lcom/android/internal/content/InstallLocationUtils$TestableInterface;
.super Ljava/lang/Object;
.source "InstallLocationUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/content/InstallLocationUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "TestableInterface"
.end annotation


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist getAllow3rdPartyOnInternalConfig(Landroid/content/Context;)Z
.end method

.method public abstract blacklist getDataDirectory()Ljava/io/File;
.end method

.method public abstract blacklist getExistingAppInfo(Landroid/content/Context;Ljava/lang/String;)Landroid/content/pm/ApplicationInfo;
.end method

.method public abstract blacklist getForceAllowOnExternalSetting(Landroid/content/Context;)Z
.end method

.method public abstract blacklist getStorageManager(Landroid/content/Context;)Landroid/os/storage/StorageManager;
.end method
