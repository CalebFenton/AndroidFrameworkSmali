.class public final Landroid/content/Loader$ForceLoadContentObserver;
.super Landroid/database/ContentObserver;
.source "Loader.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/content/Loader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ForceLoadContentObserver"
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field final synthetic blacklist this$0:Landroid/content/Loader;


# direct methods
.method public constructor whitelist <init>(Landroid/content/Loader;)V
    .registers 3
    .param p1, "this$0"    # Landroid/content/Loader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 78
    .local p0, "this":Landroid/content/Loader$ForceLoadContentObserver;, "Landroid/content/Loader<TD;>.ForceLoadContentObserver;"
    iput-object p1, p0, Landroid/content/Loader$ForceLoadContentObserver;->this$0:Landroid/content/Loader;

    .line 79
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 80
    return-void
.end method


# virtual methods
.method public whitelist deliverSelfNotifications()Z
    .registers 2

    .line 84
    .local p0, "this":Landroid/content/Loader$ForceLoadContentObserver;, "Landroid/content/Loader<TD;>.ForceLoadContentObserver;"
    const/4 v0, 0x1

    return v0
.end method

.method public whitelist onChange(Z)V
    .registers 3
    .param p1, "selfChange"    # Z

    .line 89
    .local p0, "this":Landroid/content/Loader$ForceLoadContentObserver;, "Landroid/content/Loader<TD;>.ForceLoadContentObserver;"
    iget-object v0, p0, Landroid/content/Loader$ForceLoadContentObserver;->this$0:Landroid/content/Loader;

    invoke-virtual {v0}, Landroid/content/Loader;->onContentChanged()V

    .line 90
    return-void
.end method
