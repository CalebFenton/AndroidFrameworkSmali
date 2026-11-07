.class public Ljava/time/zone/ZoneRulesException;
.super Ljava/time/DateTimeException;
.source "ZoneRulesException.java"


# static fields
.field private static final whitelist serialVersionUID:J = -0x16a7842e31574fcfL


# direct methods
.method public constructor whitelist test-api <init>(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;)V

    .line 86
    return-void
.end method

.method public constructor whitelist test-api <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .line 95
    invoke-direct {p0, p1, p2}, Ljava/time/DateTimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 96
    return-void
.end method
