.class public interface abstract Landroid/service/autofill/SavedDatasetsInfoCallback;
.super Ljava/lang/Object;
.source "SavedDatasetsInfoCallback.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/autofill/SavedDatasetsInfoCallback$Error;
    }
.end annotation


# static fields
.field public static final whitelist ERROR_NEEDS_USER_ACTION:I = 0x2

.field public static final whitelist ERROR_OTHER:I = 0x0

.field public static final whitelist ERROR_UNSUPPORTED:I = 0x1


# virtual methods
.method public abstract whitelist onError(I)V
.end method

.method public abstract whitelist onSuccess(Ljava/util/Set;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Landroid/service/autofill/SavedDatasetsInfo;",
            ">;)V"
        }
    .end annotation
.end method
