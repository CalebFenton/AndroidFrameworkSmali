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
.field public static final DECIMAL1:B = 0x3t

.field public static final DECIMAL2:B = 0x4t

.field public static final DECIMAL3:B = 0x5t

.field public static final HALF_FRACTION:B = 0x2t

.field public static final INTEGER:B = 0x0t

.field public static final INTEGER_CUSTOM:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 229
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "INTEGER"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "INTEGER_CUSTOM"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    .line 230
    const-string/jumbo v1, "HALF_FRACTION"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "DECIMAL1"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "DECIMAL2"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "DECIMAL3"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 229
    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ECountVariant;->names:[Ljava/lang/String;

    #@29
    .line 222
    return-void
.end method
