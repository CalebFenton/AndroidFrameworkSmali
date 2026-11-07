.class public final synthetic Lcom/android/internal/content/om/OverlayManagerImpl$$ExternalSyntheticLambda0;
.super Ljava/lang/Object;
.source "D8$$SyntheticClass"

# interfaces
.implements Ljava/io/FilenameFilter;


# direct methods
.method public synthetic constructor blacklist <init>()V
    .registers 1

    .line 0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final whitelist test-api accept(Ljava/io/File;Ljava/lang/String;)Z
    .registers 3

    .line 0
    invoke-static {p1, p2}, Lcom/android/internal/content/om/OverlayManagerImpl;->lambda$getOverlayInfosForTarget$0(Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
