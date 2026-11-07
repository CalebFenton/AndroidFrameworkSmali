.class final enum Lcom/android/framework/protobuf/WireFormat$Utf8Validation$1;
.super Lcom/android/framework/protobuf/WireFormat$Utf8Validation;
.source "WireFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/framework/protobuf/WireFormat$Utf8Validation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4010
    name = null
.end annotation


# direct methods
.method constructor blacklist <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            null,
            null
        }
    .end annotation

    .line 190
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/framework/protobuf/WireFormat$Utf8Validation;-><init>(Ljava/lang/String;ILcom/android/framework/protobuf/WireFormat$1;)V

    return-void
.end method


# virtual methods
.method blacklist readString(Lcom/android/framework/protobuf/CodedInputStream;)Ljava/lang/Object;
    .registers 3
    .param p1, "input"    # Lcom/android/framework/protobuf/CodedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 193
    invoke-virtual {p1}, Lcom/android/framework/protobuf/CodedInputStream;->readString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
