.class public final Lcom/android/server/job/DataSetProto$PackageEntryProto;
.super Ljava/lang/Object;
.source "DataSetProto.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/job/DataSetProto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "PackageEntryProto"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/job/DataSetProto$PackageEntryProto$StopReasonCount;,
        Lcom/android/server/job/DataSetProto$PackageEntryProto$State;
    }
.end annotation


# static fields
.field public static final blacklist ACTIVE:J = 0x10800000007L

.field public static final blacklist ACTIVE_STATE:J = 0x10b00000004L

.field public static final blacklist ACTIVE_TOP:J = 0x10800000008L

.field public static final blacklist ACTIVE_TOP_STATE:J = 0x10b00000005L

.field public static final blacklist PACKAGE_NAME:J = 0x10900000002L

.field public static final blacklist PENDING:J = 0x10800000006L

.field public static final blacklist PENDING_STATE:J = 0x10b00000003L

.field public static final blacklist STOP_REASONS:J = 0x20b00000009L

.field public static final blacklist UID:J = 0x10500000001L


# direct methods
.method public constructor blacklist <init>(Lcom/android/server/job/DataSetProto;)V
    .registers 2
    .param p1, "this$0"    # Lcom/android/server/job/DataSetProto;
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
