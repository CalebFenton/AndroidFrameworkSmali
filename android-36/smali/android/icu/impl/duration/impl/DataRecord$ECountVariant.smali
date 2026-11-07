.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ECountVariant"
.end annotation


# static fields
.field public static final blacklist DECIMAL1:B = 0x3t

.field public static final blacklist DECIMAL2:B = 0x4t

.field public static final blacklist DECIMAL3:B = 0x5t

.field public static final blacklist HALF_FRACTION:B = 0x2t

.field public static final blacklist INTEGER:B = 0x0t

.field public static final blacklist INTEGER_CUSTOM:B = 0x1t

.field public static final blacklist names:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 6

    .line 248
    const-string v4, "DECIMAL2"

    const-string v5, "DECIMAL3"

    const-string v0, "INTEGER"

    const-string v1, "INTEGER_CUSTOM"

    const-string v2, "HALF_FRACTION"

    const-string v3, "DECIMAL1"

    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;->names:[Ljava/lang/String;

    return-void
.end method
