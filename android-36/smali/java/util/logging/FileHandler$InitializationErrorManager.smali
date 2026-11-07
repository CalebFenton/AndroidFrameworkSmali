.class Ljava/util/logging/FileHandler$InitializationErrorManager;
.super Ljava/util/logging/ErrorManager;
.source "FileHandler.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/util/logging/FileHandler;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InitializationErrorManager"
.end annotation


# instance fields
.field greylist-max-o lastException:Ljava/lang/Exception;


# direct methods
.method private constructor greylist-max-o <init>()V
    .registers 1

    .line 731
    invoke-direct {p0}, Ljava/util/logging/ErrorManager;-><init>()V

    return-void
.end method

.method synthetic constructor blacklist <init>(Ljava/util/logging/FileHandler-IA;)V
    .registers 2

    invoke-direct {p0}, Ljava/util/logging/FileHandler$InitializationErrorManager;-><init>()V

    return-void
.end method


# virtual methods
.method public whitelist test-api error(Ljava/lang/String;Ljava/lang/Exception;I)V
    .registers 4
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "ex"    # Ljava/lang/Exception;
    .param p3, "code"    # I

    .line 735
    iput-object p2, p0, Ljava/util/logging/FileHandler$InitializationErrorManager;->lastException:Ljava/lang/Exception;

    .line 736
    return-void
.end method
