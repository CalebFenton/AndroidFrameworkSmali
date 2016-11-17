.class Lsun/nio/ch/Reflect$ReflectionError;
.super Ljava/lang/Error;
.source "Reflect.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lsun/nio/ch/Reflect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ReflectionError"
.end annotation


# static fields
.field private static final serialVersionUID:J = -0x782ccaf2e3ba7081L


# direct methods
.method constructor <init>(Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "x"    # Ljava/lang/Throwable;

    #@0
    .prologue
    .line 41
    invoke-direct {p0, p1}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    #@3
    .line 40
    return-void
.end method
