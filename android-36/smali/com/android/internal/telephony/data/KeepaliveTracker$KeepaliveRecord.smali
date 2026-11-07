.class Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;
.super Ljava/lang/Object;
.source "KeepaliveTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/KeepaliveTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "KeepaliveRecord"
.end annotation


# instance fields
.field public blacklist currentStatus:I

.field public blacklist slotIndex:I


# direct methods
.method constructor blacklist <init>(II)V
    .registers 3

    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 96
    iput p1, p0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->slotIndex:I

    .line 97
    iput p2, p0, Lcom/android/internal/telephony/data/KeepaliveTracker$KeepaliveRecord;->currentStatus:I

    return-void
.end method
