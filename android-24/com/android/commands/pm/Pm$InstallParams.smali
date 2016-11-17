.class Lcom/android/commands/pm/Pm$InstallParams;
.super Ljava/lang/Object;
.source "Pm.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/commands/pm/Pm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstallParams"
.end annotation


# instance fields
.field installerPackageName:Ljava/lang/String;

.field sessionParams:Landroid/content/pm/PackageInstaller$SessionParams;

.field userId:I


# direct methods
.method private constructor <init>()V
    .locals 1

    #@0
    .prologue
    .line 430
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 433
    const/4 v0, -0x1

    #@4
    iput v0, p0, Lcom/android/commands/pm/Pm$InstallParams;->userId:I

    #@6
    .line 430
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/commands/pm/Pm$InstallParams;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Lcom/android/commands/pm/Pm$InstallParams;-><init>()V

    #@3
    return-void
.end method
