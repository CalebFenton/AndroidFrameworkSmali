.class Lcom/android/internal/policy/PhoneWindow$2;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Lcom/android/internal/widget/SwipeDismissLayout$OnDismissedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/PhoneWindow;->registerSwipeCallbacks()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/PhoneWindow;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/PhoneWindow;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/policy/PhoneWindow;

    #@0
    .prologue
    .line 4344
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public onDismissed(Lcom/android/internal/widget/SwipeDismissLayout;)V
    .locals 1
    .param p1, "layout"    # Lcom/android/internal/widget/SwipeDismissLayout;

    #@0
    .prologue
    .line 4347
    iget-object v0, p0, Lcom/android/internal/policy/PhoneWindow$2;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/policy/PhoneWindow;->dispatchOnWindowDismissed()V

    #@5
    .line 4346
    return-void
.end method
