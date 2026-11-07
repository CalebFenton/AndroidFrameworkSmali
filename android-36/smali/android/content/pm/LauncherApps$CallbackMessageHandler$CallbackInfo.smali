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
.field greylist-max-o launcherExtras:Landroid/os/Bundle;

.field blacklist mLoadingProgress:F

.field greylist-max-o packageName:Ljava/lang/String;

.field greylist-max-o packageNames:[Ljava/lang/String;

.field greylist-max-o replacing:Z

.field greylist-max-o shortcuts:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ShortcutInfo;",
            ">;"
        }
    .end annotation
.end field

.field greylist-max-o user:Landroid/os/UserHandle;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 2236
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Landroid/content/pm/LauncherApps-IA;)V
    .registers 2

    invoke-direct {p0}, Landroid/content/pm/LauncherApps$CallbackMessageHandler$CallbackInfo;-><init>()V

    return-void
.end method
