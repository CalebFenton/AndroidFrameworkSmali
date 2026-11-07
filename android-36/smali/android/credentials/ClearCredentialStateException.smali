.class public Landroid/credentials/ClearCredentialStateException;
.super Ljava/lang/Exception;
.source "ClearCredentialStateException.java"


# static fields
.field public static final whitelist TYPE_UNKNOWN:Ljava/lang/String; = "android.credentials.ClearCredentialStateException.TYPE_UNKNOWN"


# instance fields
.field private final blacklist mType:Ljava/lang/String;


# direct methods
.method public constructor whitelist <init>(Ljava/lang/String;)V
    .registers 3
    .param p1, "type"    # Ljava/lang/String;

    .line 86
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, v0}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 87
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .line 56
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 57
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 5
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .line 66
    invoke-direct {p0, p2, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 67
    const-string/jumbo v0, "type must not be empty"

    invoke-static {p1, v0}, Lcom/android/internal/util/Preconditions;->checkStringNotEmpty(Ljava/lang/CharSequence;Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Landroid/credentials/ClearCredentialStateException;->mType:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public constructor whitelist <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4
    .param p1, "type"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Landroid/credentials/ClearCredentialStateException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 78
    return-void
.end method


# virtual methods
.method public whitelist getType()Ljava/lang/String;
    .registers 2

    .line 47
    iget-object v0, p0, Landroid/credentials/ClearCredentialStateException;->mType:Ljava/lang/String;

    return-object v0
.end method
