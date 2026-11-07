.class Ljava/util/zip/ZipFile$Source$End;
.super Ljava/lang/Object;
.source "ZipFile.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/zip/ZipFile$Source;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "End"
.end annotation


# instance fields
.field blacklist cenlen:J

.field blacklist cenoff:J

.field blacklist centot:I

.field blacklist endpos:J


# direct methods
.method private constructor blacklist <init>()V
    .registers 1

    .line 1529
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/zip/ZipFile-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/zip/ZipFile$Source$End;-><init>()V

    return-void
.end method
