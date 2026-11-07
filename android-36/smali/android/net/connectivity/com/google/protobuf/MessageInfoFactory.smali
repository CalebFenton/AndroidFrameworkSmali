.class interface abstract Landroid/net/connectivity/com/google/protobuf/MessageInfoFactory;
.super Ljava/lang/Object;
.source "MessageInfoFactory.java"


# annotations
.annotation runtime Landroid/net/connectivity/com/google/protobuf/CheckReturnValue;
.end annotation


# virtual methods
.method public abstract blacklist isSupported(Ljava/lang/Class;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation
.end method

.method public abstract blacklist messageInfoFor(Ljava/lang/Class;)Landroid/net/connectivity/com/google/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Landroid/net/connectivity/com/google/protobuf/MessageInfo;"
        }
    .end annotation
.end method
