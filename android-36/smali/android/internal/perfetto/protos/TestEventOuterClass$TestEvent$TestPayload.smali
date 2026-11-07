.class public final Landroid/internal/perfetto/protos/TestEventOuterClass$TestEvent$TestPayload;
.super Ljava/lang/Object;
.source "TestEventOuterClass.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/internal/perfetto/protos/TestEventOuterClass$TestEvent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "TestPayload"
.end annotation


# static fields
.field public static final blacklist DEBUG_ANNOTATIONS:J = 0x20b00000007L

.field public static final blacklist NESTED:J = 0x20b00000002L

.field public static final blacklist REMAINING_NESTING_DEPTH:J = 0x10d00000003L

.field public static final blacklist REPEATED_INTS:J = 0x20500000006L

.field public static final blacklist SINGLE_INT:J = 0x10500000005L

.field public static final blacklist SINGLE_STRING:J = 0x10900000004L

.field public static final blacklist STR:J = 0x20900000001L


# direct methods
.method public constructor blacklist <init>(Landroid/internal/perfetto/protos/TestEventOuterClass$TestEvent;)V
    .registers 2
    .param p1, "this$1"    # Landroid/internal/perfetto/protos/TestEventOuterClass$TestEvent;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010
        }
        names = {
            null
        }
    .end annotation

    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
