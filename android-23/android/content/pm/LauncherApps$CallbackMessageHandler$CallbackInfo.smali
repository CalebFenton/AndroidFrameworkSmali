.class Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;
.super Ljava/lang/Object;
.source "LauncherApps.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/pm/LauncherApps$CallbackMessageHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CallbackInfo"
.end annotation


# instance fields
.field packageName:Ljava/lang/String;

.field packageNames:[Ljava/lang/String;

.field replacing:Z

.field user:Landroid/os/UserHandle;


# direct methods
.method private constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 434
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method

.method synthetic constructor <init>(Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;)V
    .locals 0

    #@0
    .prologue
    invoke-direct {p0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>()V

    #@3
    return-void
.end method
