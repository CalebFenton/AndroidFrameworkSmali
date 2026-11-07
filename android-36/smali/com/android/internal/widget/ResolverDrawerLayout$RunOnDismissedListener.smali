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
.field final synthetic blacklist this$0:Lcom/android/internal/widget/ResolverDrawerLayout;


# direct methods
.method private constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V
    .registers 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            null
        }
    .end annotation

    .line 1282
    iput-object p1, p0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Lcom/android/internal/widget/ResolverDrawerLayout;Lcom/android/internal/widget/ResolverDrawerLayout-IA;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;-><init>(Lcom/android/internal/widget/ResolverDrawerLayout;)V

    return-void
.end method


# virtual methods
.method public whitelist test-api run()V
    .registers 2

    .line 1285
    iget-object v0, p0, Lcom/android/internal/widget/ResolverDrawerLayout$RunOnDismissedListener;->this$0:Lcom/android/internal/widget/ResolverDrawerLayout;

    invoke-virtual {v0}, Lcom/android/internal/widget/ResolverDrawerLayout;->dispatchOnDismissed()V

    .line 1286
    return-void
.end method
