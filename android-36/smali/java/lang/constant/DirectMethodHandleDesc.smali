.class public interface abstract Ljava/lang/constant/DirectMethodHandleDesc;
.super Ljava/lang/Object;
.source "DirectMethodHandleDesc.java"

# interfaces
.implements Ljava/lang/constant/MethodHandleDesc;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljava/lang/constant/DirectMethodHandleDesc$Kind;
    }
.end annotation

.annotation system Ldalvik/annotation/PermittedSubclasses;
    value = {
        Ljava/lang/constant/DirectMethodHandleDescImpl;
    }
.end annotation


# virtual methods
.method public abstract blacklist isOwnerInterface()Z
.end method

.method public abstract blacklist kind()Ljava/lang/constant/DirectMethodHandleDesc$Kind;
.end method

.method public abstract blacklist lookupDescriptor()Ljava/lang/String;
.end method

.method public abstract blacklist methodName()Ljava/lang/String;
.end method

.method public abstract blacklist owner()Ljava/lang/constant/ClassDesc;
.end method

.method public abstract blacklist refKind()I
.end method
