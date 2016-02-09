.class Ljava/io/ObjectInputStream$InputValidationDesc;
.super Ljava/lang/Object;
.source "ObjectInputStream.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/io/ObjectInputStream;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "InputValidationDesc"
.end annotation


# instance fields
.field priority:I

.field validator:Ljava/io/ObjectInputValidation;


# direct methods
.method constructor <init>()V
    .locals 0

    #@0
    .prologue
    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    #@3
    return-void
.end method
