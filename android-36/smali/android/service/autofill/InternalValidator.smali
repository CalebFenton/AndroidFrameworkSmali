.class public abstract Landroid/service/autofill/InternalValidator;
.super Ljava/lang/Object;
.source "InternalValidator.java"

# interfaces
.implements Landroid/service/autofill/Validator;
.implements Landroid/os/Parcelable;


# direct methods
.method public constructor blacklist <init>()V
    .registers 1

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract blacklist isValid(Landroid/service/autofill/ValueFinder;)Z
.end method
