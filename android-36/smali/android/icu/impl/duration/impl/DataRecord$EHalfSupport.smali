.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EHalfSupport"
.end annotation


# static fields
.field public static final blacklist NO:B = 0x1t

.field public static final blacklist ONE_PLUS:B = 0x2t

.field public static final blacklist YES:B

.field public static final blacklist names:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 328
    const-string v0, "NO"

    const-string v1, "ONE_PLUS"

    const-string v2, "YES"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EHalfSupport;->names:[Ljava/lang/String;

    return-void
.end method
