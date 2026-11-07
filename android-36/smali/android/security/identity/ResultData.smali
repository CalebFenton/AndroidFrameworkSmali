.class public abstract Landroid/security/identity/ResultData;
.super Ljava/lang/Object;
.source "ResultData.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/ResultData$Status;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final whitelist STATUS_NOT_IN_REQUEST_MESSAGE:I = 0x3

.field public static final whitelist STATUS_NOT_REQUESTED:I = 0x2

.field public static final whitelist STATUS_NO_ACCESS_CONTROL_PROFILES:I = 0x6

.field public static final whitelist STATUS_NO_SUCH_ENTRY:I = 0x1

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final whitelist STATUS_READER_AUTHENTICATION_FAILED:I = 0x5

.field public static final whitelist STATUS_USER_AUTHENTICATION_FAILED:I = 0x4


# direct methods
.method protected constructor blacklist <init>()V
    .registers 1

    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract whitelist getAuthenticatedData()[B
.end method

.method public abstract whitelist getEntry(Ljava/lang/String;Ljava/lang/String;)[B
.end method

.method public abstract whitelist getEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getMessageAuthenticationCode()[B
.end method

.method public abstract whitelist getNamespaces()Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract whitelist getRetrievedEntryNames(Ljava/lang/String;)Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method blacklist getSignature()[B
    .registers 2

    .line 138
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public abstract whitelist getStaticAuthenticationData()[B
.end method

.method public abstract whitelist getStatus(Ljava/lang/String;Ljava/lang/String;)I
.end method
