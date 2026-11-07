.class public final Landroid/internal/perfetto/protos/TestConfigOuterClass$TestConfig;
.super Ljava/lang/Object;
.source "TestConfigOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/TestConfigOuterClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TestConfig"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/internal/perfetto/protos/TestConfigOuterClass$TestConfig$DummyFields;
    }
.end annotation


# static fields
.field public static final blacklist DUMMY_FIELDS:J = 0x10b00000006L

.field public static final blacklist MAX_MESSAGES_PER_SECOND:J = 0x10d00000002L

.field public static final blacklist MESSAGE_COUNT:J = 0x10d00000001L

.field public static final blacklist MESSAGE_SIZE:J = 0x10d00000004L

.field public static final blacklist SEED:J = 0x10d00000003L

.field public static final blacklist SEND_BATCH_ON_REGISTER:J = 0x10800000005L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/TestConfigOuterClass;)V
    .registers 2
    .param p1, "this$0"    # Landroid/internal/perfetto/protos/TestConfigOuterClass;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
