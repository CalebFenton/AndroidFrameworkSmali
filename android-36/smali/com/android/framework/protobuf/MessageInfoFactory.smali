.class interface abstract Lcom/android/framework/protobuf/MessageInfoFactory;
.super Ljava/lang/Object;
.source "MessageInfoFactory.java"


# annotations
.annotation runtime Lcom/android/framework/protobuf/CheckReturnValue;
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

.method public abstract blacklist messageInfoFor(Ljava/lang/Class;)Lcom/android/framework/protobuf/MessageInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/framework/protobuf/MessageInfo;"
        }
    .end annotation
.end method
