.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EHalfPlacement"
.end annotation


# static fields
.field public static final blacklist AFTER_FIRST:B = 0x1t

.field public static final blacklist LAST:B = 0x2t

.field public static final blacklist PREFIX:B

.field public static final blacklist names:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 273
    const-string v0, "AFTER_FIRST"

    const-string v1, "LAST"

    const-string v2, "PREFIX"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EHalfPlacement;->names:[Ljava/lang/String;

    return-void
.end method
