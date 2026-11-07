.class final Ljava/lang/DexCache;
.super Ljava/lang/Object;
.source "DexCache.java"


# instance fields
.field private blacklist classLoader:Ljava/lang/ClassLoader;

.field private greylist dexFile:J

.field private blacklist location:Ljava/lang/String;

.field private blacklist resolvedCallSites:J

.field private blacklist resolvedFields:J

.field private blacklist resolvedFieldsArray:J

.field private blacklist resolvedMethodTypes:J

.field private blacklist resolvedMethodTypesArray:J

.field private blacklist resolvedMethods:J

.field private blacklist resolvedMethodsArray:J

.field private blacklist resolvedTypes:J

.field private blacklist resolvedTypesArray:J

.field private blacklist strings:J

.field private blacklist stringsArray:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 94
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
