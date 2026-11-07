.class public final synthetic Ljava/util/zip/ZipFile$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/util/function/IntFunction;


# instance fields
.field public final synthetic blacklist f$0:Ljava/util/zip/ZipFile;


# direct methods
.method public synthetic constructor blacklist <init>(Ljava/util/zip/ZipFile;)V
    .registers 2

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda0;->f$0:Ljava/util/zip/ZipFile;

    return-void
.end method


# virtual methods
.method public final whitelist test-api apply(I)Ljava/lang/Object;
    .registers 3

    .line 0
    iget-object v0, p0, Ljava/util/zip/ZipFile$$ExternalSyntheticLambda0;->f$0:Ljava/util/zip/ZipFile;

    invoke-static {v0, p1}, Ljava/util/zip/ZipFile;->$r8$lambda$ezC-4OQ_M11WsQ9SZfXtPWcxf2w(Ljava/util/zip/ZipFile;I)Ljava/util/zip/ZipEntry;

    move-result-object p1

    return-object p1
.end method
