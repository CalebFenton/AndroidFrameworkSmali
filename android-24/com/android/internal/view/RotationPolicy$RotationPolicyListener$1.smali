.class Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;
.super Landroid/database/ContentObserver;
.source "RotationPolicy.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;


# direct methods
.method constructor <init>(Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;
    .param p2, "$anonymous0"    # Landroid/os/Handler;

    #@0
    .prologue
    .line 188
    iput-object p1, p0, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;->this$1:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    #@2
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    #@5
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    #@0
    .prologue
    .line 191
    iget-object v0, p0, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener$1;->this$1:Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;

    #@2
    invoke-virtual {v0}, Lcom/android/internal/view/RotationPolicy$RotationPolicyListener;->onChange()V

    #@5
    .line 190
    return-void
.end method
