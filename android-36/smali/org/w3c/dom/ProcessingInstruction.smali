.class public interface abstract Lorg/w3c/dom/ProcessingInstruction;
.super Ljava/lang/Object;
.source "ProcessingInstruction.java"

# interfaces
.implements Lorg/w3c/dom/Node;


# virtual methods
.method public abstract whitelist test-api getData()Ljava/lang/String;
.end method

.method public abstract whitelist test-api getTarget()Ljava/lang/String;
.end method

.method public abstract whitelist test-api setData(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/w3c/dom/DOMException;
        }
    .end annotation
.end method
