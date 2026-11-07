.class public Lcom/android/framework/protobuf/InvalidProtocolBufferException$InvalidWireTypeException;
.super Lcom/android/framework/protobuf/InvalidProtocolBufferException;
.source "InvalidProtocolBufferException.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/InvalidProtocolBufferException;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "InvalidWireTypeException"
.end annotation


# static fields
.field private static final whitelist serialVersionUID:J = 0x2d92b8a3b8283743L


# direct methods
.method public constructor blacklist <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "description"    # Ljava/lang/String;

    .line 151
    invoke-direct {p0, p1}, Lcom/android/framework/protobuf/InvalidProtocolBufferException;-><init>(Ljava/lang/String;)V

    .line 152
    return-void
.end method
