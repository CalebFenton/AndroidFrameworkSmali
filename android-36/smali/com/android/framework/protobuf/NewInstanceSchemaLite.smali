.class final Lcom/android/framework/protobuf/NewInstanceSchemaLite;
.super Ljava/lang/Object;
.source "NewInstanceSchemaLite.java"

# interfaces
.implements Lcom/android/framework/protobuf/NewInstanceSchema;


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
.end annotation


# direct methods
.method constructor blacklist <init>()V
    .registers 1

    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public blacklist newInstance(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .param p1, "defaultInstance"    # Ljava/lang/Object;

    .line 39
    move-object v0, p1

    check-cast v0, Lcom/android/framework/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Lcom/android/framework/protobuf/GeneratedMessageLite;->newMutableInstance()Lcom/android/framework/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method
