.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$EPluralization;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "EPluralization"
.end annotation


# static fields
.field public static final ARABIC:B = 0x5t

.field public static final DUAL:B = 0x2t

.field public static final HEBREW:B = 0x4t

.field public static final NONE:B = 0x0t

.field public static final PAUCAL:B = 0x3t

.field public static final PLURAL:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 240
    const/4 v0, 0x6

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "NONE"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "PLURAL"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "DUAL"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    .line 241
    const-string/jumbo v1, "PAUCAL"

    #@18
    const/4 v2, 0x3

    #@19
    aput-object v1, v0, v2

    #@1b
    const-string/jumbo v1, "HEBREW"

    #@1e
    const/4 v2, 0x4

    #@1f
    aput-object v1, v0, v2

    #@21
    const-string/jumbo v1, "ARABIC"

    #@24
    const/4 v2, 0x5

    #@25
    aput-object v1, v0, v2

    #@27
    .line 240
    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$EPluralization;->names:[Ljava/lang/String;

    #@29
    .line 233
    return-void
.end method
