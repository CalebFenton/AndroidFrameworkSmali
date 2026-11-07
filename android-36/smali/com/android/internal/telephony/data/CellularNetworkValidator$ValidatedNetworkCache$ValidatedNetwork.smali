.class final Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;
.super Ljava/lang/Object;
.source "CellularNetworkValidator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "ValidatedNetwork"
.end annotation


# instance fields
.field final blacklist mValidationIdentity:Ljava/lang/String;

.field blacklist mValidationTimeStamp:J


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;J)V
    .registers 4

    .line 101
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 102
    iput-object p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationIdentity:Ljava/lang/String;

    .line 103
    iput-wide p2, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationTimeStamp:J

    return-void
.end method


# virtual methods
.method blacklist update(J)V
    .registers 3

    .line 106
    iput-wide p1, p0, Lcom/android/internal/telephony/data/CellularNetworkValidator$ValidatedNetworkCache$ValidatedNetwork;->mValidationTimeStamp:J

    return-void
.end method
