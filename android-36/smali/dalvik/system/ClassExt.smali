.class public final Ldalvik/system/ClassExt;
.super Ljava/lang/Object;
.source "ClassExt.java"


# instance fields
.field public blacklist classValueMap:Ljava/lang/Object;

.field private blacklist erroneousStateError:Ljava/lang/Throwable;

.field private blacklist instanceJfieldIDs:Ljava/lang/Object;

.field private blacklist jmethodIDs:Ljava/lang/Object;

.field private blacklist obsoleteClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private greylist-max-o obsoleteDexCaches:[Ljava/lang/Object;

.field private greylist-max-o obsoleteMethods:Ljava/lang/Object;

.field private greylist-max-o originalDexFile:Ljava/lang/Object;

.field private blacklist preRedefineClassDefIndex:I

.field private blacklist preRedefineDexFilePtr:J

.field private blacklist staticJfieldIDs:Ljava/lang/Object;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
