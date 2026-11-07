.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ESeparatorVariant;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ESeparatorVariant"
.end annotation


# static fields
.field public static final blacklist FULL:B = 0x2t

.field public static final blacklist NONE:B = 0x0t

.field public static final blacklist SHORT:B = 0x1t

.field public static final blacklist names:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 348
    const-string v0, "SHORT"

    const-string v1, "FULL"

    const-string v2, "NONE"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ESeparatorVariant;->names:[Ljava/lang/String;

    return-void
.end method
