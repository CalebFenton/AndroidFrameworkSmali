.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EGender;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EGender"
.end annotation


# static fields
.field public static final blacklist F:B = 0x1t

.field public static final blacklist M:B = 0x0t

.field public static final blacklist N:B = 0x2t

.field public static final blacklist names:[Ljava/lang/String;


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 3

    .line 358
    const-string v0, "F"

    const-string v1, "N"

    const-string v2, "M"

    filled-new-array {v2, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EGender;->names:[Ljava/lang/String;

    return-void
.end method
