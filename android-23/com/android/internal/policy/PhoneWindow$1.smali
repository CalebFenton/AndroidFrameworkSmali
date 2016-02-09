.class Lcom/android/internal/policy/PhoneWindow$1;
.super Ljava/lang/Object;
.source "PhoneWindow.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/PhoneWindow;
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
    .line 267
    iput-object p1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    #@0
    .prologue
    const/4 v3, 0x0

    #@1
    .line 269
    const/4 v0, 0x0

    #@2
    .local v0, "i":I
    :goto_0
    const/16 v1, 0xd

    #@4
    if-gt v0, v1, :cond_1

    #@6
    .line 270
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@8
    invoke-static {v1}, Lcom/android/internal/policy/PhoneWindow;->-get5(Lcom/android/internal/policy/PhoneWindow;)I

    #@b
    move-result v1

    #@c
    const/4 v2, 0x1

    #@d
    shl-int/2addr v2, v0

    #@e
    and-int/2addr v1, v2

    #@f
    if-eqz v1, :cond_0

    #@11
    .line 271
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@13
    invoke-virtual {v1, v0}, Lcom/android/internal/policy/PhoneWindow;->doInvalidatePanelMenu(I)V

    #@16
    .line 269
    :cond_0
    add-int/lit8 v0, v0, 0x1

    #@18
    goto :goto_0

    #@19
    .line 274
    :cond_1
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@1b
    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->-set3(Lcom/android/internal/policy/PhoneWindow;Z)Z

    #@1e
    .line 275
    iget-object v1, p0, Lcom/android/internal/policy/PhoneWindow$1;->this$0:Lcom/android/internal/policy/PhoneWindow;

    #@20
    invoke-static {v1, v3}, Lcom/android/internal/policy/PhoneWindow;->-set2(Lcom/android/internal/policy/PhoneWindow;I)I

    #@23
    .line 268
    return-void
.end method
