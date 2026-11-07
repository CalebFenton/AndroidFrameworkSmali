.class public final Lcom/android/server/blob/BlobStatsEventProto$BlobCommitterProto;
.super Ljava/lang/Object;
.source "BlobStatsEventProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/blob/BlobStatsEventProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "BlobCommitterProto"
.end annotation


# static fields
.field public static final blacklist ACCESS_MODE:J = 0x10500000003L

.field public static final blacklist COMMIT_TIMESTAMP_MILLIS:J = 0x10300000002L

.field public static final blacklist NUM_WHITELISTED_PACKAGE:J = 0x10500000004L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/blob/BlobStatsEventProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/blob/BlobStatsEventProto;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
