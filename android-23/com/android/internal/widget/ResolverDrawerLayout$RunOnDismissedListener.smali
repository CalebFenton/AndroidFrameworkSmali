.class Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;
.super Ljava/lang/Object;
.source "ResolverDrawerLayout.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ResolverDrawerLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "RunOnDismissedListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method private constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    #@0
    .prologue
    .line 865
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/widget/ResolverDrawerLayout;

    #@0
    .prologue
    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    #@3
    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    #@0
    .prologue
    .line 868
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    #@5
    .line 867
    return-void
.end method
