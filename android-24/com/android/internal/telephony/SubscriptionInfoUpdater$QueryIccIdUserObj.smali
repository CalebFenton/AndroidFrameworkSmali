.class Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;
.super Ljava/lang/Object;
.source "SubscriptionInfoUpdater.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/SubscriptionInfoUpdater;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "QueryIccIdUserObj"
.end annotation


# instance fields
.field public reason:Ljava/lang/String;

.field public slotId:I


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .param p1, "reason"    # Ljava/lang/String;
    .param p2, "slotId"    # I

    #@0
    .prologue
    .line 350
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    .line 351
    iput-object p1, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->reason:Ljava/lang/String;

    #@5
    .line 352
    iput p2, p0, Lcom/android/internal/telephony/SubscriptionInfoUpdater$QueryIccIdUserObj;->slotId:I

    #@7
    .line 350
    return-void
.end method
