.class public Lcom/android/server/pm/Settings$VersionInfo;
.super Ljava/lang/Object;
.source "Settings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VersionInfo"
.end annotation


# instance fields
.field databaseVersion:I

.field fingerprint:Ljava/lang/String;

.field sdkVersion:I


# direct methods
.method public constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 237
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method


# virtual methods
.method public forceCurrent()V
    .locals 1

    #@0
    .prologue
    .line 263
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    #@2
    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->sdkVersion:I

    #@4
    .line 264
    const/4 v0, 0x3

    #@5
    iput v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->databaseVersion:I

    #@7
    .line 265
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    #@9
    iput-object v0, p0, Lcom/android/server/pm/Settings$VersionInfo;->fingerprint:Ljava/lang/String;

    #@b
    .line 262
    return-void
.end method
