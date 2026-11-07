.class public interface abstract Landroid/security/identity/CredentialDataResult$Entries;
.super Ljava/lang/Object;
.source "CredentialDataResult.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/identity/CredentialDataResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "Entries"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/security/identity/CredentialDataResult$Entries$Status;
    }
.end annotation


# static fields
.field public static final whitelist STATUS_NOT_IN_REQUEST_MESSAGE:I = 0x3

.field public static final whitelist STATUS_NOT_REQUESTED:I = 0x2

.field public static final whitelist STATUS_NO_ACCESS_CONTROL_PROFILES:I = 0x6

.field public static final whitelist STATUS_NO_SUCH_ENTRY:I = 0x1

.field public static final whitelist STATUS_OK:I = 0x0

.field public static final whitelist STATUS_READER_AUTHENTICATION_FAILED:I = 0x5

.field public static final whitelist STATUS_USER_AUTHENTICATION_FAILED:I = 0x4


# virtual methods
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

.method public abstract whitelist getStatus(Ljava/lang/String;Ljava/lang/String;)I
.end method
