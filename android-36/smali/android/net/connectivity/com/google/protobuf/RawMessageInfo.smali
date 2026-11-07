.class final Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;
.super Ljava/lang/Object;
.source "RawMessageInfo.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/MessageInfo;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation


# instance fields
.field private final blacklist defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

.field private final blacklist flags:I

.field private final blacklist info:Ljava/lang/String;

.field private final blacklist objects:[Ljava/lang/Object;


# direct methods
.method constructor blacklist <init>(Landroid/net/connectivity/com/google/protobuf/MessageLite;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 10
    .param p1, "defaultInstance"    # Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .param p2, "info"    # Ljava/lang/String;
    .param p3, "objects"    # [Ljava/lang/Object;

    .line 181
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 182
    iput-object p1, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    .line 183
    iput-object p2, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    .line 184
    iput-object p3, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    .line 185
    const/4 v0, 0x0

    .line 186
    .local v0, "position":I
    add-int/lit8 v1, v0, 0x1

    .end local v0    # "position":I
    .local v1, "position":I
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 187
    .local v0, "value":I
    const v2, 0xd800

    if-ge v0, v2, :cond_18

    .line 188
    iput v0, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->flags:I

    goto :goto_33

    .line 190
    :cond_18
    and-int/lit16 v3, v0, 0x1fff

    .line 191
    .local v3, "result":I
    const/16 v4, 0xd

    .line 192
    .local v4, "shift":I
    :goto_1c
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "position":I
    .local v5, "position":I
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    move v0, v1

    if-lt v1, v2, :cond_2d

    .line 193
    and-int/lit16 v1, v0, 0x1fff

    shl-int/2addr v1, v4

    or-int/2addr v3, v1

    .line 194
    add-int/lit8 v4, v4, 0xd

    move v1, v5

    goto :goto_1c

    .line 196
    :cond_2d
    shl-int v1, v0, v4

    or-int/2addr v1, v3

    iput v1, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->flags:I

    move v1, v5

    .line 198
    .end local v3    # "result":I
    .end local v4    # "shift":I
    .end local v5    # "position":I
    .restart local v1    # "position":I
    :goto_33
    return-void
.end method


# virtual methods
.method public blacklist getDefaultInstance()Landroid/net/connectivity/com/google/protobuf/MessageLite;
    .registers 2

    .line 210
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->defaultInstance:Landroid/net/connectivity/com/google/protobuf/MessageLite;

    return-object v0
.end method

.method blacklist getObjects()[Ljava/lang/Object;
    .registers 2

    .line 205
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->objects:[Ljava/lang/Object;

    return-object v0
.end method

.method blacklist getStringInfo()Ljava/lang/String;
    .registers 2

    .line 201
    iget-object v0, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->info:Ljava/lang/String;

    return-object v0
.end method

.method public blacklist getSyntax()Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;
    .registers 3

    .line 215
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x1

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_9

    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO2:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    goto :goto_b

    :cond_9
    sget-object v0, Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;->PROTO3:Landroid/net/connectivity/com/google/protobuf/ProtoSyntax;

    :goto_b
    return-object v0
.end method

.method public blacklist isMessageSetWireFormat()Z
    .registers 3

    .line 220
    iget v0, p0, Landroid/net/connectivity/com/google/protobuf/RawMessageInfo;->flags:I

    const/4 v1, 0x2

    and-int/2addr v0, v1

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    goto :goto_9

    :cond_8
    const/4 v0, 0x0

    :goto_9
    return v0
.end method
