.class public abstract Ljavax/xml/validation/Schema;
.super Ljava/lang/Object;
.source "Schema.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api newValidator()Ljavax/xml/validation/Validator;
.end method

.method public abstract whitelist test-api newValidatorHandler()Ljavax/xml/validation/ValidatorHandler;
.end method
