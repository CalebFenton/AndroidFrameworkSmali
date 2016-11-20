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


# instance fields
.field final synthetic this$0:Landroid/content/Loader;


# direct methods
.method public constructor <init>(Landroid/content/Loader;)V
    .locals 1

    #@0
    .prologue
    .line 71
    .local p0, "this":Landroid/content/Loader$ForceLoadContentObserver;, "Landroid/content/Loader<TD;>.ForceLoadContentObserver;"
    .local p1, "this$0":Landroid/content/Loader;, "Landroid/content/Loader<TD;>;"
    iput-object p1, p0, Landroid/content/Loader$ForceLoadContentObserver;->this$0:Landroid/content/Loader;

    #@2
    .line 72
    new-instance v0, Landroid/os/Handler;

    #@4
    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    #@7
    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@a
    .line 71
    return-void
.end method


# virtual methods
.method public deliverSelfNotifications()Z
    .locals 1

    #@0
    .prologue
    .line 77
    .local p0, "this":Landroid/content/Loader$ForceLoadContentObserver;, "Landroid/content/Loader<TD;>.ForceLoadContentObserver;"
    const/4 v0, 0x1

    #@1
    return v0
.end method

.method public onChange(Z)V
    .locals 1
    .param p1, "selfChange"    # Z

    #@0
    .prologue
    .line 82
    .local p0, "this":Landroid/content/Loader$ForceLoadContentObserver;, "Landroid/content/Loader<TD;>.ForceLoadContentObserver;"
    iget-object v0, p0, Landroid/content/Loader$ForceLoadContentObserver;->this$0:Landroid/content/Loader;

    #@2
    invoke-virtual {v0}, Landroid/content/Loader;->onContentChanged()V

    #@5
    .line 81
    return-void
.end method
