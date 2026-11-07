.class public Ljava/text/MessageFormat$Field;
.super Ljava/text/Format$Field;
.source "MessageFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljava/text/MessageFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Field"
.end annotation


# static fields
.field public static final whitelist test-api ARGUMENT:Ljava/text/MessageFormat$Field;

.field private static final whitelist serialVersionUID:J = 0x6da23d2c7b46bfaaL


# direct methods
.method static constructor blacklist <clinit>()V
    .registers 2

    .line 1196
    new-instance v0, Ljava/text/MessageFormat$Field;

    const-string v1, "message argument field"

    invoke-direct {v0, v1}, Ljava/text/MessageFormat$Field;-><init>(Ljava/lang/String;)V

    sput-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    return-void
.end method

.method protected constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "name"    # Ljava/lang/String;

    .line 1166
    invoke-direct {p0, p1}, Ljava/text/Format$Field;-><init>(Ljava/lang/String;)V

    .line 1167
    return-void
.end method


# virtual methods
.method protected whitelist test-api readResolve()Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/InvalidObjectException;
        }
    .end annotation

    .line 1178
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Ljava/text/MessageFormat$Field;

    if-ne v0, v1, :cond_b

    .line 1182
    sget-object v0, Ljava/text/MessageFormat$Field;->ARGUMENT:Ljava/text/MessageFormat$Field;

    return-object v0

    .line 1179
    :cond_b
    new-instance v0, Ljava/io/InvalidObjectException;

    const-string v1, "subclass didn\'t correctly implement readResolve"

    invoke-direct {v0, v1}, Ljava/io/InvalidObjectException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
