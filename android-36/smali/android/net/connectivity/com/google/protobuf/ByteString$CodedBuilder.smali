.class final Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;
.super Ljava/lang/Object;
.source "ByteString.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/connectivity/com/google/protobuf/ByteString;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "CodedBuilder"
.end annotation


# instance fields
.field private final blacklist buffer:[B

.field private final blacklist output:Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;


# direct methods
.method private constructor blacklist <init>(I)V
    .registers 3
    .param p1, "size"    # I

    .line 1253
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1254
    new-array v0, p1, [B

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    .line 1255
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-static {v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->newInstance([B)Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    move-result-object v0

    iput-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->output:Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    .line 1256
    return-void
.end method

.method synthetic constructor blacklist <init>(ILandroid/net/connectivity/com/google/protobuf/ByteString$1;)V
    .registers 3
    .param p1, "x0"    # I
    .param p2, "x1"    # Landroid/net/connectivity/com/google/protobuf/ByteString$1;

    .line 1249
    invoke-direct {p0, p1}, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;-><init>(I)V

    return-void
.end method


# virtual methods
.method public blacklist build()Landroid/net/connectivity/com/google/protobuf/ByteString;
    .registers 3

    .line 1259
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->output:Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;->checkNoSpaceLeft()V

    .line 1264
    new-instance v0, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;

    iget-object v1, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->buffer:[B

    invoke-direct {v0, v1}, Landroid/net/connectivity/com/google/protobuf/ByteString$LiteralByteString;-><init>([B)V

    return-object v0
.end method

.method public blacklist getCodedOutput()Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;
    .registers 2

    .line 1268
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/ByteString$CodedBuilder;->output:Landroid/net/connectivity/com/google/protobuf/CodedOutputStream;

    return-object v0
.end method
