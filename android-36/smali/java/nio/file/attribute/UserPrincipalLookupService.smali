.class public abstract Ljava/nio/file/attribute/UserPrincipalLookupService;
.super Ljava/lang/Object;
.source "UserPrincipalLookupService.java"


# direct methods
.method protected constructor whitelist test-api <init>()V
    .registers 1

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    return-void
.end method


# virtual methods
.method public abstract whitelist test-api lookupPrincipalByGroupName(Ljava/lang/String;)Ljava/nio/file/attribute/GroupPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public abstract whitelist test-api lookupPrincipalByName(Ljava/lang/String;)Ljava/nio/file/attribute/UserPrincipal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
