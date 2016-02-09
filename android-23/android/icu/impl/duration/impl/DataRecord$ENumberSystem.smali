.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ENumberSystem"
.end annotation


# static fields
.field public static final CHINESE_SIMPLIFIED:B = 0x2t

.field public static final CHINESE_TRADITIONAL:B = 0x1t

.field public static final DEFAULT:B = 0x0t

.field public static final KOREAN:B = 0x3t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 256
    const/4 v0, 0x4

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "DEFAULT"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    .line 257
    const-string/jumbo v1, "CHINESE_TRADITIONAL"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "CHINESE_SIMPLIFIED"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    const-string/jumbo v1, "KOREAN"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    .line 256
    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ENumberSystem;->names:[Ljava/lang/String;

    #@1d
    .line 251
    return-void
.end method
