export const hey = function(prompt) {
   if (prompt.toUpperCase() == prompt && /[a-zA-Z]/.test(prompt)) {
        if (prompt.replace(/\s/g, '').slice(-1) == '?') {
            return 'Calm down, I know what I\'m doing!'
        }
     return 'Whoa, chill out!';
   } else if (!/\S/g.test(prompt)) {
     return 'Fine. Be that way!';
   } else if (prompt.replace(/\s/g, '').slice(-1) == '?') {
     return 'Sure.';
   } else {
     return 'Whatever.';
   }
 }