.class Lcom/android/server/hdmi/HdmiCecController$2;
.super Ljava/lang/Object;
.source "HdmiCecController.java"

# interfaces
.implements Lcom/android/internal/util/Predicate;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/hdmi/HdmiCecController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/android/internal/util/Predicate",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/hdmi/HdmiCecController;


# direct methods
.method constructor <init>(Lcom/android/server/hdmi/HdmiCecController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/hdmi/HdmiCecController;

    #@0
    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/server/hdmi/HdmiCecController$2;->this$0:Lcom/android/server/hdmi/HdmiCecController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public apply(Ljava/lang/Integer;)Z
    .locals 2
    .param p1, "address"    # Ljava/lang/Integer;

    #@0
    .prologue
    .line 84
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    #@3
    move-result v0

    #@4
    invoke-static {v0}, Lcom/android/server/hdmi/HdmiUtils;->getTypeFromAddress(I)I

    #@7
    move-result v0

    #@8
    const/4 v1, 0x5

    #@9
    if-ne v0, v1, :cond_0

    #@b
    const/4 v0, 0x1

    #@c
    :goto_0
    return v0

    #@d
    :cond_0
    const/4 v0, 0x0

    #@e
    goto :goto_0
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "address"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 83
    check-cast p1, Ljava/lang/Integer;

    #@2
    .end local p1    # "address":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/server/hdmi/HdmiCecController$2;->apply(Ljava/lang/Integer;)Z

    #@5
    move-result v0

    #@6
    return v0
.end method
