.class final Landroid/net/connectivity/com/google/protobuf/NewInstanceSchemaLite;
.super Ljava/lang/Object;
.source "NewInstanceSchemaLite.java"

# interfaces
.implements Landroid/net/connectivity/com/google/protobuf/NewInstanceSchema;


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
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

    check-cast v0, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    invoke-virtual {v0}, Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;->newMutableInstance()Landroid/net/connectivity/com/google/protobuf/GeneratedMessageLite;

    move-result-object v0

    return-object v0
.end method
