.class Lcom/android/internal/telephony/SubscriptionController$1;
.super Ljava/lang/Object;
.source "SubscriptionController.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/telephony/SubscriptionController;->getActiveSubscriptionInfoList(Ljava/lang/String;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/telephony/SubscriptionInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/telephony/SubscriptionController;


# direct methods
.method constructor <init>(Lcom/android/internal/telephony/SubscriptionController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/telephony/SubscriptionController;

    #@0
    .prologue
    .line 561
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionController$1;->this$0:Lcom/android/internal/telephony/SubscriptionController;

    #@2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@5
    return-void
.end method


# virtual methods
.method public compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I
    .locals 3
    .param p1, "arg0"    # Landroid/telephony/SubscriptionInfo;
    .param p2, "arg1"    # Landroid/telephony/SubscriptionInfo;

    #@0
    .prologue
    .line 565
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    #@3
    move-result v1

    #@4
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSimSlotIndex()I

    #@7
    move-result v2

    #@8
    sub-int v0, v1, v2

    #@a
    .line 566
    .local v0, "flag":I
    if-nez v0, :cond_0

    #@c
    .line 568
    invoke-virtual {p1}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@f
    move-result v1

    #@10
    invoke-virtual {p2}, Landroid/telephony/SubscriptionInfo;->getSubscriptionId()I

    #@13
    move-result v2

    #@14
    sub-int/2addr v1, v2

    #@15
    return v1

    #@16
    .line 570
    :cond_0
    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "arg0"    # Ljava/lang/Object;
    .param p2, "arg1"    # Ljava/lang/Object;

    #@0
    .prologue
    .line 563
    check-cast p1, Landroid/telephony/SubscriptionInfo;

    #@2
    .end local p1    # "arg0":Ljava/lang/Object;
    check-cast p2, Landroid/telephony/SubscriptionInfo;

    #@4
    .end local p2    # "arg1":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/telephony/SubscriptionController$1;->compare(Landroid/telephony/SubscriptionInfo;Landroid/telephony/SubscriptionInfo;)I

    #@7
    move-result v0

    #@8
    return v0
.end method
