.class public interface abstract Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;
.super Ljava/lang/Object;
.source "DataRecord.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/icu/impl/duration/impl/DataRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ETimeDirection"
.end annotation


# static fields
.field public static final FUTURE:B = 0x2t

.field public static final NODIRECTION:B = 0x0t

.field public static final PAST:B = 0x1t

.field public static final names:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    #@0
    .prologue
    .line 212
    const/4 v0, 0x3

    #@1
    new-array v0, v0, [Ljava/lang/String;

    #@3
    const-string/jumbo v1, "NODIRECTION"

    #@6
    const/4 v2, 0x0

    #@7
    aput-object v1, v0, v2

    #@9
    const-string/jumbo v1, "PAST"

    #@c
    const/4 v2, 0x1

    #@d
    aput-object v1, v0, v2

    #@f
    const-string/jumbo v1, "FUTURE"

    #@12
    const/4 v2, 0x2

    #@13
    aput-object v1, v0, v2

    #@15
    sput-object v0, Landroid/icu/impl/duration/impl/DataRecord$ETimeDirection;->names:[Ljava/lang/String;

    #@17
    .line 208
    return-void
.end method
