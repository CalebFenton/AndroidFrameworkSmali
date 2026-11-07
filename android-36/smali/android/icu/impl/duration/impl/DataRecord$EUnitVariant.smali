.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EUnitVariant"
.end annotation


# static fields
.field public static final blacklist MEDIUM:B = 0x1t

.field public static final blacklist PLURALIZED:B = 0x0t

.field public static final blacklist SHORT:B = 0x2t

.field public static final blacklist names:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 235
    const-string v0, "MEDIUM"

    const-string v1, "SHORT"

    const-string v2, "PLURALIZED"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EUnitVariant;->names:[Ljava/lang/String;

    return-void
.end method
